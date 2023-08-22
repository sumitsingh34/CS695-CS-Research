import { Link } from "react-router-dom"

export default function Header(){
    return(
        <header className="p-4 flex justify-between bg-primary">
            <a href='/'>
                Logo
            </a>
            <div className="flex gap-4">
                <Link to={"/createstudentform"}>Create Student</Link>
                <Link>Submit Course Details</Link>
                <Link>Map Student to Course</Link>
            </div>
        </header>
    )
}