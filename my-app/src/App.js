import './App.css';

// components 폴더의 Exam1.js를 가져와서 사용
// 사용할 때 이름을 Ex1으로 지정
import Ex1 from './Components/Exam1';
import Ex2 from './Components/Exam2';

function App() {
  // 리액트의 컴포넌트는 딱 하나의 요소만을 반환할 수 있다
  // -> 여러 요소를 반환하고 싶을 때는 부모 요소로 묶어준다
  return (
    /* franment(<></>) : 반환되는 요소들 감쌀 때 사용, 해석 X */
    <>
      {/* jsx 주석 */}
      <h1>Hello React!!!</h1>
  
      <div>리액트 배웁니다요</div>

      <Ex1 />

      <Ex2 />
    </>
  );
}

export default App;