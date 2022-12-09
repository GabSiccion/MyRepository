var score_networking = 0;
var score_webdev = 0;
var question_number = 0;

const question_text = document.getElementById("question");
const a_text = document.getElementById("a_text");
const b_text = document.getElementById("b_text");
const c_text = document.getElementById("c_text");
const d_text = document.getElementById("d_text");
const submit_button = document.getElementById("submit");

//Assign text to their designated document element
function buildQuiz() {
	const question_current = questions[question_number];

	question_text.innerHTML = question_current.question;
	a_text.innerHTML = question_current.a;
	b_text.innerHTML = question_current.b;
	c_text.innerHTML = question_current.c;
	d_text.innerHTML = question_current.d;
	question_number++;
}

submit_button.addEventListener("click", () => {
	let selection = document.querySelector(
		"input[type=radio][name=answer]:checked"
	);

	const question_current = questions[question_number - 1];
	let category = question_current.category;
	console.log(selection.id + question_current.correct);

	if (selection.id === question_current.correct) {
		if (category === "Web Development") score_webdev++;
		if (category === "Networking") score_networking++;
	}

	if (question_number < questions.length) {
		try {
			selection.checked = false;
			buildQuiz();
		} catch (Exception) {
			alert("select an answer before submiting.");
		}
	} else {
		recommendation = "";
		if (score_webdev > score_networking) {
			recommendation = "You are more knowledgeable in Web Development.";
		} else if (score_networking > score_webdev) {
			recommendation = "You are more knowledgeable in Networking.";
		} else if (score_networking === score_webdev && score_networking > 0) {
			recommendation = "Your knowledge in both tracks are in the same level.";
		} else if (score_networking === score_webdev && score_networking < 1) {
			recommendation = "You scored 0 in both tracks.";
		}
		alert(
			"Networking score : " +
				score_networking +
				"\r\n" +
				"Web Development score : " +
				score_webdev +
				"\r\n" +
				"Total score : " +
				(score_networking + score_webdev) +
				"\r\n\r\n" +
				recommendation
		);
		resetQuiz();
		selection.checked = false;
		buildQuiz();
	}
});

function resetQuiz() {
	question_number = 0;
	score_networking = 0;
	score_webdev = 0;
}

const questions = [
	{
		question:
			"Which of these programming languages is considered as a back-end programming language?",
		a: "HTML",
		b: "CSS",
		c: "Sass",
		d: "PHP",
		correct: "d",
		category: "Web Development",
	},
	{
		question: "What does HTML stand for?",
		a: "Hyper Terminal Markup Language",
		b: "Hypertext Markup Language",
		c: "High Tracing Marketing Language",
		d: "Helicopter Terminal Maintenance Language",
		correct: "b",
		category: "Web Development",
	},
	{
		question:
			"Which of the programming languages is made by James Gosling? 1Networking",
		a: "Java",
		b: "C#",
		c: "JavaScript",
		d: "HTML",
		correct: "a",
		category: "Networking",
	},
	{
		question:
			"Which of the programming languages is made by James Gosling? 2Networking",
		a: "Java",
		b: "C#",
		c: "JavaScript",
		d: "HTML",
		correct: "a",
		category: "Networking",
	},
	{
		question:
			"Which of these programming languages is considered as a back-end programming language?",
		a: "HTML",
		b: "CSS",
		c: "Sass",
		d: "PHP",
		correct: "d",
		category: "Web Development",
	},
	{
		question: "What does HTML stand for?",
		a: "Hyper Terminal Markup Language",
		b: "Hypertext Markup Language",
		c: "High Tracing Marketing Language",
		d: "Helicopter Terminal Maintenance Language",
		correct: "b",
		category: "Web Development",
	},
	{
		question:
			"Which of the programming languages is made by James Gosling? 1Networking",
		a: "Java",
		b: "C#",
		c: "JavaScript",
		d: "HTML",
		correct: "a",
		category: "Networking",
	},
	{
		question:
			"Which of the programming languages is made by James Gosling? 2Networking",
		a: "Java",
		b: "C#",
		c: "JavaScript",
		d: "HTML",
		correct: "a",
		category: "Networking",
	},
];
