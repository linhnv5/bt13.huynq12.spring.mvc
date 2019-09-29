<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-md-12 mt-5">
    <div class="block block-themed">
        <div class="block-header bg-light">
            <h3 class="block-title"><i class="fa fa-comments"></i> Post a comment below </h3>
            <div class="block-options">
            </div>
        </div>
        <div class="block-content mb-4">
			<div class="block-content mb-4">
				<div class="alert alert-warning">There are no comments yet.</div>
				<ul class="list-unstyled">
				</ul>
				<div class="card">
					<div class="card-body">
						<form method="POST"
							action="http://googelplayappstore.info/comments">
							<input type="hidden" name="_token"
								value="Q8VehCpmmt9hvCZyrOKXorSQQtrJ8CojFCsGec7X"> <input
								type="hidden" name="commentable_type"
								value="\App\App\Eloquent\Entities\App"> <input
								type="hidden" name="commentable_id" value="1">
							<div class="form-group">
								<label for="message">Enter your message here:</label>
								<textarea class="form-control " name="message" rows="3"></textarea>
								<div class="invalid-feedback">Your message is required.</div>
								<small class="form-text text-muted"><a target="_blank"
									href="https://help.github.com/articles/basic-writing-and-formatting-syntax">Markdown</a>
									cheatsheet.</small>
							</div>
							<button type="submit"
								class="btn btn-sm btn-outline-success text-uppercase">Submit</button>
						</form>
					</div>
					<coccocgrammar></coccocgrammar>
				</div>
				<br>
			</div>
		</div>
    </div>
</div>