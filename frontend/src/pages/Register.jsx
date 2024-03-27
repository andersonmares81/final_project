import React, { useState } from 'react';
import { Button, Form } from 'react-bootstrap';
import '../styles/Register.css';

export default function Register() {
  const [formData, setFormData] = useState({
    name: '',
    lastName: '',
    phone: '',
    email: '',
    password: '',
    repeatPassword: ''
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // Aquí puedes agregar la lógica para enviar los datos del formulario
    console.log(formData);
  };

  return (
    <div id="register">
      <section id='register-section' className='container-fluid'>
        <div className="container-fluid d-flex justify-content-center align-items-center register-contain">
          <div className="align-items-center px-2 register-contain-form" id="floating-register-card">
            <Form className='my-5 mx-5'>
              <h1 className='d-flex justify-content-center mb-4'>Register</h1>
              <Form.Group className='mb-3' controlId="formName">
                <Form.Label className='mb-1 ms-1 input-label'>Name</Form.Label>
                <Form.Control type="text" placeholder="Enter name" name="name" value={formData.name} onChange={handleChange} />
                <Form.Text className="text-muted">

                </Form.Text>
              </Form.Group>
              <Form.Group className='mb-3' controlId="formLastName">
                <Form.Label className='mb-1 ms-1 input-label'>Last Name</Form.Label>
                <Form.Control type="text" placeholder="Enter last name" name="lastName" value={formData.lastName} onChange={handleChange} />
                <Form.Text className="text-muted">

                </Form.Text>
              </Form.Group>
              <Form.Group className='mb-3' controlId="formPhone">
                <Form.Label className='mb-1 ms-1 input-label'>Phone</Form.Label>
                <Form.Control type="text" placeholder="Enter phone" name="phone" value={formData.phone} onChange={handleChange} />
                <Form.Text className="text-muted">

                </Form.Text>
              </Form.Group>
              <Form.Group className='mb-3' controlId="formEmail">
                <Form.Label className='mb-1 ms-1 input-label'>Email address</Form.Label>
                <Form.Control type="email" placeholder="Enter email" name="email" value={formData.email} onChange={handleChange} />
                <Form.Text className="text-muted">

                </Form.Text>
              </Form.Group>
              <Form.Group className='mb-3' controlId="formPassword">
                <Form.Label className='mb-1 ms-1 input-label'>Password</Form.Label>
                <Form.Control type="password" placeholder="Password" name="password" value={formData.password} onChange={handleChange} />
                <Form.Text className="text-muted">

                </Form.Text>
              </Form.Group>
              <Form.Group className='mb-3' controlId="formRepeatPassword">
                <Form.Label className='mb-1 ms-1 input-label'>Repeat Password</Form.Label>
                <Form.Control type="password" placeholder="Repeat password" name="repeatPassword" value={formData.repeatPassword} onChange={handleChange} />
                <Form.Text className="text-muted">

                </Form.Text>
              </Form.Group>
              <Button onClick={handleSubmit} className='container-fluid button-register-u mt-4'>
                SIGN UP
              </Button>
            </Form>
          </div>
        </div>
      </section>
    </div>
  )
}