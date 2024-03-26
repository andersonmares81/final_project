import React, { useState } from 'react';
import { Modal, Button, Form } from 'react-bootstrap';

export default function GuestModal(props) { 
        
    
    const [numberGuest, setNumberGuest] = useState(""); 

    const handleGuest= () => {       
        const guest = numberGuest;
         props.handleGuest(guest);
        };

    return (
    <div className="modal show" style={{ display: 'block', position: 'initial', width: '270px'}}>
        <Modal.Dialog>       
        <Form.Control
            type="number"           
            value={numberGuest}
            onChange={(e) => setNumberGuest(e.target.value)}
        /> 
        <Button className='m-2 btn-get-started' onClick={handleGuest}>Add number of guests</Button>
        </Modal.Dialog>
    </div>
    );
}