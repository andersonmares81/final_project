import React, { useState } from 'react';
import { Modal, Button, Form } from 'react-bootstrap';

export default function LocationModal(props) { 
        
    const [city1, setCity] = useState('');

    const handleCityChange = (e) => {
        setCity(e.target.value);
        
    };
    
    const handleCity= () => {    
    const city = city1;
    props.handleCity(city);
    };

    return (
    <div className="modal show" style={{ display: 'block', position: 'initial', width: '280px'}}>
        <Modal.Dialog>        

        <Form.Select aria-label="Default select example" onChange={handleCityChange} value={city1}>            
            <option>Open this select menu </option>
            <option value="London">London</option>
            <option value="Paris">Paris</option>
            <option value="Firenze">Firenze</option>
            <option value="Madrid">Madrid</option>
        </Form.Select>
        <Button className='m-2 btn-get-started' onClick={handleCity}>Add city</Button>
        </Modal.Dialog>
    </div>
    );
}