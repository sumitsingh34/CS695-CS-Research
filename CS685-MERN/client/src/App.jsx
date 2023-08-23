import {Route, Routes} from "react-router-dom";
import './App.css'
import IndexPage from "./pages/IndexPage";
import Layout from "./Layout";
import CreateStudentForm from "./pages/staff/CreateStudentForm";
import StaffLogin from "./pages/staff/StaffLogin";
import StudentLogin from "./pages/student/StudentLogin";
import StudentCouseEvaluation from "./pages/student/StudentCouseEvaluation";
import StudentCouseList from "./pages/student/StudentCouseList";

function App() {
  return (
    <Routes>
      <Route path="/" element={<Layout />}> 
        <Route index element={<IndexPage />}/>
        <Route path="/staff/createstudentform" element={<CreateStudentForm />}/>
        <Route path="/staff/login" element={<StaffLogin />}/>

        <Route path="/student/login" element={<StudentLogin />}/>
        <Route path="/student/studentcouselist" element={<StudentCouseList />}/>
        <Route path="/student/studentcouseevaluation" element={<StudentCouseEvaluation />}/>
        
      </Route>
    </Routes>  
  )
}

export default App
