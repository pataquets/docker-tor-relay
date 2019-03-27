FROM pataquets/tor

RUN \
  echo "Nickname PataquetsDockerTorRelay" \
    | tee /etc/tor/conf-available/common/Nickname \
  && \
  cat \
    /etc/tor/conf-available/common/* \
    /etc/tor/conf-available/client/DNSPort \
    /etc/tor/conf-available/client/EnforceDistinctSubnets-Off \
    /etc/tor/conf-available/client/SocksPort \
    /etc/tor/conf-available/directory/DirPort \
    /etc/tor/conf-available/relay/ExitPolicy-RejectAll \
    /etc/tor/conf-available/relay/ExitRelay-Off \
    /etc/tor/conf-available/relay/ORPort \
  | tee -a /etc/tor/torrc | nl
