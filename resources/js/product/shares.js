import { shareIcons } from "./shareLink.js"
function setShareProduct() {
	const shares = ['vk', 'google', 'facebook', 'twitter'];
	const shareBlock = document.querySelector('.share')
	shares.forEach((shareItem) => {
		const shareLink = document.createElement('a');
		shareLink.href = shareIcons[shareItem].link;
		shareLink.classList.add('share__link')

		shareLink.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 50 50" width="15px" height="15px">${shareIcons[shareItem].path}</svg>`
		shareBlock.appendChild(shareLink)
	})
	const shareCount = document.createElement('div');

	shareCount.classList.add('share__count');

	shareCount.innerText = 123;

	shareBlock.appendChild(shareCount)
}

setShareProduct();