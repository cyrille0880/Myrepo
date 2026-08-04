import { fileURLToPath } from 'url';
import path from 'path';
import express from 'express';
import { testConnection } from './src/models/db.js';
import { getAllOrganizations } from './src/models/organizations.js';


app.get('/organizations', async (req, res) => {
    const organizations = await getAllOrganizations();
    console.log(organizations);
      
    const title = 'Our Partner Organizations';
    res.render('organizations', { title });
});