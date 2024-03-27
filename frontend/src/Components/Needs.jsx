import React from 'react';
import '../styles/Needs.css';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';

class Needs extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            data: []
        };
    }

    componentDidMount() {
        this.fetchData();
    }

    fetchData = () => {
        axios.get('http://localhost:4001/api/needs')
            .then(response => {
                this.setState({ data: response.data });
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    };

    render() {
        return (
            <section className="" id="things-u-need">
                <div className="container">
                    <div className="row">
                        <div className="col text-center needs-text">
                            <h1 className="lh-1 title-needs carousel-title">Things you need<span className="orange-color"> to do</span></h1>
                            <p className="subtitle text-muted pt-3 subtitle">We ensure that you´ll embark on a perfectly planned,<br /> safe vacation at a price you can afford.</p>
                        </div>
                        <div className="icon-needs col-md-2">
                            <img src={require(`../images/icons/Things-icon.png`)} alt="icon" className="image-left" />
                        </div>
                    </div>
                </div>
                <div className="container cards">
                    <div className="row justify-content-center">
                        <div className='col-lg-11'>
                            <div id="needs-carousel" className="carousel carousel-dark slide d-none d-lg-block mx-auto" data-bs-ride="carousel">
                                <div className="carousel-inner">
                                    {this.state.data.length > 0 && this.state.data.reduce((groups, item, index) => {
                                        if (index % 3 === 0) {
                                            groups.push([]);
                                        }
                                        const groupIndex = Math.floor(index / 3);
                                        groups[groupIndex].push(item);
                                        return groups;
                                    }, []).map((group, groupIndex) => (
                                        <div key={groupIndex} className={`carousel-item ${groupIndex === 0 ? 'active' : ''}`}>
                                            <div className="card-wrapper container-sm d-flex card-needs">
                                                {group.map(item => (
                                                    <div key={item.id} className={`card discounts-carousel-card card-exclusive m-3 ${groupIndex === 0 ? 'card-1' : 'card-2'}`}>
                                                        <img src={require(`../images/icons/${item.image}`)} className="card-icon-top mt-4 ms-4" alt="Sign-up-icon" style={{ maxWidth: '100%', height: 'auto' }} />
                                                        <div className="card-body mb-1 ms-1">
                                                            <h4 className="card-title-needs font-weight-bold mt-4 ms-2">{item.title}</h4>
                                                            <p className="card-text-needs text-muted ms-2 mt-1" dangerouslySetInnerHTML={{ __html: item.description }}></p>
                                                        </div>
                                                    </div>
                                                ))}
                                            </div>
                                        </div>
                                    ))}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section >
        )
    }
}

export default Needs;
