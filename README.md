Mesh 

Project goal:   provide tools and framework for collaborative networked compostion and performance

Approach:       CLI API for managing extensible, discoverable graph of distributed microservices
                and authorization of agents, with reproducible sessions 


Components:

    Session Manager: offers an API (to control one or more hosts)
    - service registry
    - authentication
    - deployment
    - discovery

    Hosts: publish Services and Agents

    Services: I/O Nodes
    - Offer: Interfaces
        - streams  (e.g. audio data)
        - controls (discrete parameter changes)
    - Perform: Processes
        - synths ()
        - effects

    Agents: Nodes (leaf node) that offer Sources OR Sinks ()
    - Actors
    - Audiences (devices)
    - Displays / Dashboards
    - Compositions Controllers
    - volumes (data)

example system setup:

$> go test
$> go build 
$> go install mesh

example CLI usage: 

$> mesh auth gcp
$> mesh start gcp hostname mesh-sesh 
$> mesh mesh-sesh auth keygen ~/.ssh/mesh_rsa
$> mesh mesh-sesh auth agent james robert jason jeff 
$> mesh mesh-sesh auth agent youtube -f ~/.ssh/mesh_rsa
$> mesh join mesh-sesh james

mesh-sesh $> add scsynth synth1
mesh-sesh $> add youtube audience
mesh-sesh $> auth agent robert jason 
mesh-sesh $> add score -f ~/score.scd 
mesh-sesh $> connect score > synth1 > audience
mesh-sesh $> scide score
mesh-sesh $> synth1 info
mesh-sesh $> synth1 host lv2-reverb 
mesh-sesh $> lv2-reverb set level .25
mesh-sesh $> audience start
mesh-sesh $> score pause
mesh-sesh $> session dump ~/mesh-sesh.session
mesh-sesh $> exit

$> mesh stop mesh-sesh

or

$> mesh load ~/mesh-sesh.session



questions:
    CLI api specification framework? OpenAPI, Cobra? promptui? 
    registry key storage? etcd?
    provisioning on GCP/AWS? Ansible
    testing framework? 
    authentication framework? OAuth? OpenID?
    build system? go? maven? basel
    CI CD Testing toolchain? travis jenkins?
    documentation (man/helpfiles/website) 
    gui/dashboard implementation? js?



Flow example:

+-+    +-+    +-+    +-+
a | -> |c| -> |d| -> + e
+-+    +-+    +-+    +-+
        ^      v
       +-+    +-+    +-+
       |b|    |f| -> | g
       + +    +-+    +-+

a: score
b: parameter dashboard
c: synth
d: effects
e: youtube audio-stream 
f: visualizer
g: youtube video-stream
