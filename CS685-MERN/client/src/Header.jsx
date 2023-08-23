import { useEffect } from "react"
import { Link, useLocation} from "react-router-dom"

export default function Header(){
    const {pathname} = useLocation();
    let subpage = pathname.split('/')?.[1];
    if(subpage.length === 0){
        subpage = 'index'
    }
    console.log(subpage);
    return(
        <header className="p-4 flex justify-between bg-primary">
            <a href='/'>
                Logo
            </a>
            <div className="flex gap-4">
                { !!subpage && (subpage === "index" || subpage === "student") && (
                    <Link to={"/student/login"} className="text-white">Student Login</Link>
                )}

                { !!subpage && subpage === "student" && (
                    <>
                        <Link to={"/student/studentcouselist"} className="text-white">Course</Link>
                        <Link to={"/student/studentcouseevaluation"} className="text-white">Evaluation</Link>
                    </>
                )}

                { !!subpage && (subpage === "index" || subpage === "staff") && (
                    <Link to={"/staff/login"} className="text-white">Staff Login</Link>
                )}
                
                { !!subpage && subpage === "staff" && (
                    <>
                        <Link to={"/staff/createstudentform"} className="text-white">Create Student</Link>
                        <Link className="text-white">Submit Course Details</Link>
                        <Link className="text-white">Map Student to Course</Link>
                    </>
                )}

                { !!subpage && subpage !== 'index' && (
                    <Link className="text-white">Logout</Link>
                )}

                
            </div>
        </header>
    )
}