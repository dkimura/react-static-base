import * as React from 'react'
import styled from 'styled-components'
import { withSiteData } from 'react-static'

import logoImg from 'logo.png'

interface Props {
  title: string
}

const H1 = styled.h1`
  text-align: center;
`

const Home: React.StatelessComponent<Props> = ({ title }) => (
  <div>
    <H1 style={{ textAlign: 'center' }}>Welcome to {title}</H1>
    <img src={logoImg} alt="" />
  </div>
)

export default withSiteData(Home)
