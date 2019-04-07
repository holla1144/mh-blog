window.addEventListener('DOMContentLoaded', () => {
  const submitButton = document.querySelector(".Form-submitBtn");
  const draftCheckBox = document.getElementById("post_draft");
  const titleField = document.getElementById("post_title");
  const bodyField = document.getElementById("post_body");

  draftCheckBox.addEventListener("change", () => {
    submitButton.value = draftCheckBox.checked ? "Save" : "Publish"
  });
});