function results = execute(varargin)
%SQLITE3.EXECUTE Execute an SQL statement.
%
%     results = sqlite3.driver(sql, param1, param2, ...)
%     results = sqlite3.driver(db_id, sql, param1, param2, ...)
% 
% The execute operation applies sql statement `sql` in the database specified
% by the connection id `db_id`. When `db_id` is omitted, the default connection
% is used.
% 
% The sql statement can use binding of the value through `?` as the
% placeholder. When the binding is used, there must be the corresponding
% number of parameters followed by the sql statement.
%
% Example:
%     results = sqlite3.execute('SELECT * FROM records WHERE rowid = ?', 1)
%     results = sqlite3.execute(db_id, 'SELECT * FROM records WHERE name = ?', 'foo')
%
% See also sqlite3.open sqlite3.close
    results = driver_('execute', varargin{:});
end
