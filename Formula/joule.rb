class Joule < Formula
  desc "Donate idle compute, earn millijoules, use open-weight AI"
  homepage "https://joule.f00.sh/"
  version "0.1.9"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-aarch64.tar.gz"
      sha256 "75bcb6090bf1b9af14b8f829de88fec25e75c5c43ea12a94b8b6cc9f8cf33d0f"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-x86_64.tar.gz"
      sha256 "c482af60dea4d9aa613aee99146114b89630a82274e9387471a07b84f653c972"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-aarch64.tar.gz"
      sha256 "0d64f90d8e2307ff07e1cd001f020697a070504a474aa7b01f37f2b0a5164cd9"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-x86_64.tar.gz"
      sha256 "856baa9e720dbe5728f10aa4fdb41e6aeccb088c2efd8aeb8180777bb91a011c"
    end
  end
  def install
    bin.install "joule"
  end
  test do
    assert_match(/joule\s+\d+\.\d+\.\d+/, shell_output("#{bin}/joule version"))
  end
end
