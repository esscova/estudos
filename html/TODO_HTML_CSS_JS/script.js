document.addEventListener('DOMContentLoaded', () => {
    const taskInput = document.getElementById('taskInput');
    const addTaskBtn = document.getElementById('addTaskBtn');
    const taskList = document.getElementById('taskList');
    const showAll = document.getElementById('showAll');
    const showCompleted = document.getElementById('showCompleted');
    const showPending = document.getElementById('showPending');

    let tasks = [];

    function renderTasks(filter = 'all') {
        taskList.innerHTML = '';
        const filteredTasks = tasks.filter(task => {
            if (filter === 'completed') return task.completed;
            if (filter === 'pending') return !task.completed;
            return true;
        });

        filteredTasks.forEach((task, index) => {
            const li = document.createElement('li');
            li.textContent = task.text;
            if (task.completed) {
                li.classList.add('completed');
            }

            const deleteBtn = document.createElement('button');
            deleteBtn.textContent = 'Remover';
            deleteBtn.addEventListener('click', () => {
                tasks.splice(index, 1);
                renderTasks(filter);
            });

            li.addEventListener('click', () => {
                task.completed = !task.completed;
                renderTasks(filter);
            });

            li.appendChild(deleteBtn);
            taskList.appendChild(li);
        });
    }

    addTaskBtn.addEventListener('click', () => {
        const text = taskInput.value.trim();
        if (text !== '') {
            tasks.push({ text, completed: false });
            taskInput.value = '';
            renderTasks();
        }
    });

    showAll.addEventListener('click', () => renderTasks('all'));
    showCompleted.addEventListener('click', () => renderTasks('completed'));
    showPending.addEventListener('click', () => renderTasks('pending'));

    renderTasks();
});