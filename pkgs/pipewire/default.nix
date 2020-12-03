{ fetchFromGitLab, pipewire }:

pipewire.overrideAttrs (_:
  {
    version = "1607018618";

    src = fetchFromGitLab {
      domain = "gitlab.freedesktop.org";
      owner = "pipewire";
      repo = "pipewire";
      rev = "9818582abe91a758a0a57ddab7f71edffd8e45a6";
      sha256 = "0ffrvl3lpqydymq51bq2s9ziqc8z3zpihr33lb69y7kar77dzqw6";
    };
  })
