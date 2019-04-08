FROM pataquets/tor

RUN \
  cat \
    /etc/tor/conf-available/common/* \
    /etc/tor/conf-available/client/DNSPort-Off \
    /etc/tor/conf-available/client/SocksPort-Off \
    /etc/tor/conf-available/directory/DirPort \
    /etc/tor/conf-available/relay/ExitPolicy-RejectAll \
    /etc/tor/conf-available/relay/ExitRelay-Off \
    /etc/tor/conf-available/relay/ORPort \
  | tee -a /etc/tor/torrc | nl
