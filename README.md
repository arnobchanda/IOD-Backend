# Production Deployment

## Quick Start
1. `npm install`
2. Set environment variables:
   - `NODE_ENV=production`
   - `MONGO_URI=your_mongodb_connection_string`
   - `PORT=3000` (optional)
   - `MONGO_DB_NAME=IndianOlympicDream` (optional)
3. `npm start`

## Files Included
- dist/indianolympicdream/ - Angular build output (includes all assets, fonts, images)
- server.js - Express server
- server/ - API routes and config
- package.json - Production dependencies only

## Environment Variables
Required for production:
- NODE_ENV=production
- MONGO_URI=mongodb://username:password@host:port/database

Optional:
- PORT=3000
- MONGO_DB_NAME=IndianOlympicDream
- AUTH_SOURCE=admin

Generated on: 2025-06-07T21:13:18.034Z
