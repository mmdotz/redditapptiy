var NewRedditPostForm = React.createClass ({
  getInitialState: function() {
    //set empty object
    };
  },

  render function(){
    return (
      //html here for Validated URL and input legend
      <div>
        <ValidatedInput inputUrl='link' placeholder='enter a website url here' errorMsg='Posted link cannot be empty' minChars='0' />
      </div>
    );
  }
});
