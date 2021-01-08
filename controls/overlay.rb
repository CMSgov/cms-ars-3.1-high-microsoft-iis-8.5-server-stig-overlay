# encoding: utf-8

include_controls 'microsoft-iis-8.5-server-stig-baseline' do

  control 'V-76681' do
    desc 'Log files are a critical component to the successful management of an IS used within the CMS. By generating log files with useful information web administrators can leverage them in the event of a disaster, malicious attack, or other site specific needs.

    Ascertaining the correct order of the events that occurred is important during forensic analysis. Events that appear harmless by themselves might be flagged as a potential threat when properly viewed in sequence. By also establishing the event date and time, an event can be properly viewed with an enterprise tool to fully see a possible threat in its entirety.

    Without sufficient information establishing when the log event occurred, investigation into the cause of event is severely hindered. Log record content that may be necessary to satisfy the requirement of this control includes, but is not limited to, time stamps, source and destination IP addresses, user/process identifiers, event descriptions, application-specific events, success/fail indications, file names involved, access control, or flow control rules invoked.

    Satisfies: SRG-APP-000092-WSR-000055, SRG-APP-000093-WSR-000053, SRG-APP-000095-WSR-000056, SRG-APP-000096-WSR-000057, SRG-APP-000097-WSR-000058, SRG-APP-000097-WSR-000059'
  end

  control 'V-76701' do
    desc 'A web server can provide many features, services, and processes. Some of these may be deemed unnecessary or too unsecure to run on a production CMS system.

    The web server must provide the capability to disable, uninstall, or deactivate functionality and services that are deemed to be non-essential to the web server mission or can adversely impact server performance.'
  end

  control 'V-76715' do
    desc 'This check verifies the server certificate is actually a CMS-issued certificate used by the organization being reviewed. This is used to verify the authenticity of the website to the user. If the certificate is not issued by the CMS or if the certificate has expired, then there is no assurance the use of the certificate is valid. The entire purpose of using a certificate is, therefore, compromised.'
    desc 'check', 'Open the IIS 8.5 Manager.
    Click the IIS 8.5 web server name.
    Double-click the "Server Certificate" icon.
    Double-click each certificate and verify the certificate path is to a CMS root CA.
    If not, this is a finding.'
    desc 'fix', 'Open the IIS 8.5 Manager.
    Click the IIS 8.5 web server name.
    Double-click the "Server Certificate" icon.
    Import a valid CMS certificate and remove any non-CMS certificates.'
  end

  control 'V-76717' do
    impact 0.0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security control is not included in CMS ARS 3.1'
  end

  control 'V-76725' do
    impact 0.0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security control is not included in CMS ARS 3.1'
  end

  control 'V-76727' do
    impact 0.0
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security control is not included in CMS ARS 3.1'
  end

  control 'V-76741' do
    desc 'Remote access to the web server is any access that communicates through an external, non-organization-controlled network. Remote access can be used to access hosted applications or to perform management functions.

    A web server can be accessed remotely and must be capable of restricting access from what the CMS defines as nonsecure zones. Nonsecure zones are defined as any IP, subnet, or region that is defined as a threat to the organization. The nonsecure zones must be defined for public web servers logically located in a DMZ, as well as private web servers with perimeter protection devices. By restricting access from nonsecure zones, through internal web server access list, the web server can stop or slow denial of service (DoS) attacks on the web server.'
  end

end