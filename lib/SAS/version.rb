module SAS
    MAJOR = '1'
    MINOR = '0'
    PATCH = '0'
    PRE   = 'beta4'

  VERSION = [MAJOR,MINOR,PATCH,PRE].compact.join('.') # SAS::VERSION conforms to
                                                      # Semantic Versioning 2.0.
                                                      # http://semver.org for details.
end
