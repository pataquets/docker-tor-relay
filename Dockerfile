FROM pataquets/tor

RUN \
  cat /etc/tor/conf-available/common/* | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/AllowDotExit | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/AllowSingleHopCircuits | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/ExcludeSingleHopRelays | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/EnforceDistinctSubnets | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/SocksPort | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/server/AllowSingleHopExits | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/server/ORPort | tee -a /etc/tor/torrc && \
  echo "ExitRelay 0" | tee -a /etc/tor/torrc
