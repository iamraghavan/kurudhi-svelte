// firebase.js

import { initializeApp } from 'firebase/app';
import { getAuth } from 'firebase/auth';
import { getDatabase } from 'firebase/database';

const firebaseConfig = {
    apiKey: "AIzaSyAQSiYoYcm4-a2672XHJDvi2wYzXfgKxk8",
    authDomain: "waggy-tails-8d2ab.firebaseapp.com",
    databaseURL: "https://waggy-tails-8d2ab-default-rtdb.firebaseio.com",
    projectId: "waggy-tails-8d2ab",
    storageBucket: "waggy-tails-8d2ab.appspot.com",
    messagingSenderId: "1035325280279",
    appId: "1:1035325280279:web:9237427e574de9e4ae0c52",
    measurementId: "G-XJGCMKWQHK"
};

// Initialize Firebase
const firebaseApp = initializeApp(firebaseConfig);

// Export Firebase services as needed
const auth = getAuth(firebaseApp);
const db = getDatabase(firebaseApp);

export { auth, db };
export { firebaseApp };