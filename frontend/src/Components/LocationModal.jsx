import React, { Component } from 'react';
import { Modal, Button, Form } from 'react-bootstrap';
import axios from 'axios';

class LocationModal extends Component {
    constructor(props) {
        super(props);
        this.state = {
            city: '',
            data: []
        };
    }

    componentDidMount() {
        this.fetchData();
    }

    fetchData = () => {
        axios.get('http://localhost:4001/api/locations')
            .then(response => {
                this.setState({ data: response.data });
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    };

    handleCityChange = (e) => {
        this.setState({ city: e.target.value });
    };

    handleCity = () => {
        const { city } = this.state;
        this.props.handleCity(city);
    };

    render() {
        const { city, data } = this.state;
        return (
            <div className="modal show" style={{ display: 'block', position: 'initial', width: '280px' }}>
                <Modal.Dialog>
                    <Form.Select aria-label="Default select example" onChange={this.handleCityChange} value={city}>
                        <option>Open this select menu</option>
                        {data.map(location => (
                            <option key={location.id} value={`${location.city}, ${location.country}`}>{location.city}, {location.country}</option>
                        ))}
                    </Form.Select>
                    <Button className='m-2 btn-get-started' onClick={this.handleCity}>Add city</Button>
                </Modal.Dialog>
            </div>
        );
    }
}

export default LocationModal;