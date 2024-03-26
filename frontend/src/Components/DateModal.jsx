import React, { useState } from 'react';
import { Modal, Button } from 'react-bootstrap';
import DatePicker from 'react-datepicker';
import 'react-datepicker/dist/react-datepicker.css';

export default function DateModal(props) {
    const [selectedDate, setSelectedDate] = useState(null);
    const [modalHeight, setModalHeight] = useState(null);

    const handleDateChange = (date) => {
        const formattedDate = date.toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
        setSelectedDate(formattedDate);
    };

    const handleDate = () => {
        console.log("Selected Date:", selectedDate);        
        const date = selectedDate;
        props.handleDate(date);
    };

    const handleCalendarOpen = () => {        
        setModalHeight('auto');
    };

    return (
        <div className="modal show" style={{ display: 'block', position: 'initial', width: '260px', height: modalHeight }}>
            <Modal.Dialog>
                <Modal.Body className="d-flex justify-content-center align-items-center">
                    <DatePicker
                        selected={selectedDate}
                        onChange={handleDateChange}
                        onCalendarOpen={handleCalendarOpen}
                        dateFormat="dd/MM/yyyy"
                        placeholderText="Select date"
                        inline 
                    />
                </Modal.Body>
                <Modal.Footer className="d-flex justify-content-center">
                    <Button className='m-2 btn-get-started-date' onClick={handleDate}>Add Date</Button>
                </Modal.Footer>
            </Modal.Dialog>
        </div>
    );
}






