import * as React from 'react'
import { withSiteData } from 'react-static'

import logoImg from 'logo.png'

interface Props {
  title: string
}

const Home: React.StatelessComponent<Props> = ({ title }) => (
  <div>
    <h1 style={{ textAlign: 'center' }}>Welcome to {title}</h1>
    <img src={logoImg} alt="" />
  </div>
)

export default withSiteData(Home)
