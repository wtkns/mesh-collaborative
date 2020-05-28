project goal: provide tools and framework for collaborative networked compostion and performance 

# Mesh 

## Components 

### Mesh Session Manager offers an API (to control one or more hosts)
  - registry
  - authentication

### Hosts publish Nodes (Services and Agents)


#### Nodes
##### Services: Nodes that perform Processes 
   - Interfaces
      - streams 
      - controls
   - Processes
      - synths
      - effects


##### Agents: Nodes that provide Sources or Sinks
   - Actors
   - Audiences
   - Dashboards
   - Compositions
   - volumes (data)

## example usage:

``` 
$> go test
$> go build 
$> go install mesh
```

example CLI usage: 

```
$> mesh auth gcp
$> mesh start gcp hostname mesh-sesh 
$> mesh mesh-sesh auth keygen ~/.ssh/mesh_rsa
$> mesh mesh-sesh auth agent james robert jason jeff 
$> mesh mesh-sesh auth agent youtube -f ~/.ssh/mesh_rsa
$> mesh join mesh-sesh james
```

```
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
```

```
$> mesh stop mesh-sesh

$> mesh load ~/mesh-sesh.session
```

## Questions:
- CLI api specification framework?
- hosting on GCP/AWS? Ansible?
- testing framework
- authentication framework?
- CI CD Testing toolchain? jenkins?
- documentation 
- gui/dashboard implementation? js?
    
