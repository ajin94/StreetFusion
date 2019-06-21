import json
from flask import Flask, session, request, send_file
from flask import redirect, render_template
from flask import url_for
from flask_wtf.csrf import CsrfProtect
# from connections import get_connection
import traceback

ftapp = Flask(__name__)
ftapp.secret_key = '6wfwef6ASDW676qFQWFw6QDWD6748wd((FD'
ftapp.config['SESSION_TYPE'] = 'filesystem'
ftapp.config['WTF_CSRF_SECRET_KEY'] = 'asdaQFWDa#$@%fewd#22342FWFQE'
csrf = CsrfProtect()
csrf.init_app(ftapp)


@ftapp.route('/')
def index():
    return render_template('template_base/index.html')


if __name__ == '__main__':
    ftapp.run(host='0.0.0.0')
