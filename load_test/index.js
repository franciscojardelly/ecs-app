import http from 'k6/http';
import { sleep } from 'k6';
export const options = {
  vus: 5,
  duration: '3000s',
};


  const params = {
    headers: {
      'Content-Type': 'application/json',
      'Host': 'app.fjfs.com.br'
    },
  };


export default function () {
  http.get('http://fjfs-cluster-ecs-ec2-lb-2110800062.us-east-1.elb.amazonaws.com/system', params);
}