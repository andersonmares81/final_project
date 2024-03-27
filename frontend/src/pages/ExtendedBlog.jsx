import React, { useState, useEffect } from 'react';
import '../styles/ExtendedBlog.css';
import axios from 'axios';

function ExtendedBlog() {
    const [articles, setArticles] = useState([]);

    useEffect(() => {
        fetchData();
    }, []);

    const fetchData = async () => {
        try {
            const response = await axios.get('http://localhost:4001/api/extendedblogz');
            setArticles(response.data);
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    };

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
                                <img src={`../images/extended_blogs/${article.image}`} className="img-ext-blog" alt={`Article image ${article.id}`} />
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
    );
}

export default ExtendedBlog;