import React, { useState } from 'react';
import '../styles/ExtendedBlog.css';
import axios from 'axios';


export default function ExtendedBlog({ articles }) {
    return (
        <div className="travel-blog">
            <div className='title-text mb-5'>
                <h1 className='ext-blog-title'>Explore the most exciting destinations and the best travel experiences with us.</h1>
                <p className='ext-blog-subtitle'></p>
            </div>
            <section className="articles d-flex justify-content-center">
                {articles.map(article => (
                    <div key={article.id} className="card article-card mb-5 mx-5">
                        <div className='card-body row'>
                            <div className='col-3'>
                                <img src={require(`../images/img/${article.image}.jpg`)} className="img-ext-blog" alt={`Article image ${article.id}`} />
                            </div>
                            <div className='col-9'>
                                <h2 className="ext-title-txt mt-1">{article.title}</h2>
                                <p className="ext-desc-txt mt-3">{article.description}</p>
                                <p className="ext-date-txt mt-3">{article.date}</p>
                            </div>
                        </div>
                    </div>
                ))}
            </section>
        </div>
    )
}

/*
class ExtendedBlog extends React.Component {
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
        axios.get('http://localhost:4001/api/extendedblog')
            .then(response => {
                this.setState({ data: response.data });
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    };

    render() {
        return (
            <div className="travel-blog">
                <div className='title-text mb-5'>
                    <h1 className='ext-blog-title'>Explore the most exciting destinations and the best travel experiences with us.</h1>
                    <p className='ext-blog-subtitle'></p>
                </div>
                <section className="articles d-flex justify-content-center">
                    {this.state.data.length > 0 && this.state.data.reduce((groups, item, index) => {
                        if (index % 3 === 0) {
                            groups.push([]);
                        }
                        const groupIndex = Math.floor(index / 3);
                        groups[groupIndex].push(item);
                        return groups;
                    }, []).map((article, articleIndex) => (
                        <div key={articleIndex} className="card article-card mb-5 mx-5">
                            <div className='card-body row'>
                                <div className='col-3'>
                                    <img src={`../images/extended_blogs/${article.image}.jpg`} className="img-ext-blog" alt={`Article image ${article.id}`} />
                                </div>
                                <div className='col-9'>
                                    <h2 className="ext-title-txt mt-1">{article.title}</h2>
                                    <p className="ext-desc-txt mt-3">{article.description}</p>
                                    <p className="ext-date-txt mt-3">{article.date}</p>
                                </div>
                            </div>
                        </div>
                    ))}
                </section>
            </div>
        )
    }
}

export default ExtendedBlog;
*/


/*
<div className="travel-blog">
            <div className='title-text mb-5'>
                <h1 className='ext-blog-title'>Welcome to our Travel Blog!</h1>
                <p className='ext-blog-subtitle'>Explore the most exciting destinations and the best travel experiences with us.</p>
            </div>
            <section className="articles d-flex justify-content-center">
                <div className="card article-card mb-5 mx-5">
                    <div className='card-body row'>
                        <div className='col-3'>
                            <img src={require(`../images/img/extended-blog-0.jpg`)} className="img-ext-blog" alt="Imagen del artículo 1" />
                        </div>
                        <div className='col-9'>
                            <h2 className="mt-1">Título del artículo 1</h2>
                            <p className="mt-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde repellendus distinctio dignissimos fugit, vel illo aliquid dolor, iste mollitia ducimus excepturi ipsam adipisci nostrum eligendi ex incidunt praesentium quasi omnis doloremque reiciendis at magni. Repellat ullam veniam quasi corrupti. Hic quam exercitationem maiores, similique perferendis commodi beatae consectetur odit est eaque voluptatum, ipsa delectus placeat quas corrupti rem numquam error blanditiis. Ut minus sed, voluptatum ipsa officiis odio tempora voluptas laborum labore nam, voluptates doloribus assumenda quaerat provident, cum eos maiores ipsum architecto laudantium sequi placeat voluptatibus! Cupiditate, facere veritatis. Asperiores quisquam nobis officiis reprehenderit excepturi et facere, culpa illo.</p>
                            <p className="ext-date-txt mt-3">25 de marzo de 2024</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        */
    
