# Defined via `source`
function config --wraps='/usr/bin/git --git-dir=/home/florida/.cfg/ --work-tree=/home/florida' --description 'alias config /usr/bin/git --git-dir=/home/florida/.cfg/ --work-tree=/home/florida'
  /usr/bin/git --git-dir=/home/florida/.cfg/ --work-tree=/home/florida $argv; 
end
