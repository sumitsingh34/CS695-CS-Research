import {Route, Routes} from "react-router-dom";
import './App.css'
import IndexPage from "./pages/IndexPage";
import Layout from "./Layout";
import CreateStudentForm from "./pages/CreateStudentForm";

function App() {
  return (
    <Routes>
      <Route path="/" element={<Layout />}> 
        <Route index element={<IndexPage />}/>
        <Route path="/createstudentform" element={<CreateStudentForm />}/>
      </Route>
    </Routes>  
  )
}

export default App
