
var ValidatedInput = React.createClass({
  getInitialState: function() {
    return {
      className: '',
      errorField:''
    };
  },


  getDefaultProps: function(){
    return {
      inputUrl: 'no title',
      placeholder: 'your text here!',
      errorMsg: "Oops, it/'s blank",
      minChars: '1'
    };
  },


  handleChanged: function(event){
    console.log(event.target);
    if (event.target.value.length < this.props.minChars){
      this.setState({
        className:'field-with-errors',
        errorField: this.props.errorMsg
      });
    } else {
      this.setState({
        className:'',
        errorField:''
      });
    }
  },

  render: function(){
    return (
      <fieldset>
      <legend>{this.props.inputUrl}</legend>
      <input placeholder={this.props.placeholder} type="text"
      onChange={this.handleChanged}
      className={this.state.className}
      name="post[url]" id="post_url" />
    <p className='errors'>{this.state.errorField}</p>
    </fieldset>
    );
  }
});
