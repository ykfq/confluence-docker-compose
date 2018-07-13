FROM atlassian/confluence-server:6.7.2
ADD files/ ${CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/lib/
RUN chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_INSTALL_DIR}/confluence/WEB-INF/lib/ && \
    chmod 755 -R ${CONFLUENCE_INSTALL_DIR} && \
    chmod 775 -R ${CONFLUENCE_HOME}
CMD ["/entrypoint.sh", "-fg"]
ENTRYPOINT ["/sbin/tini", "--"]
