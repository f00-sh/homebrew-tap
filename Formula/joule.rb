class Joule < Formula
  desc "Donate idle compute, earn millijoules, use open-weight AI"
  homepage "https://joule.f00.sh/"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-aarch64.tar.gz"
      sha256 "b62e5ed297282aa86d6ed211bc9105c0ad1c6d03327882271f9ffa4cbd71f4a0"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-x86_64.tar.gz"
      sha256 "d66b86b44223ca6e81b780475c1cb44f8080b771338ea3ff7a5e4af7bb08277e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-aarch64.tar.gz"
      sha256 "e787b2506f8b776faf314cd0f38088412b7c35854de26ac36d2939fc5c15dc50"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-x86_64.tar.gz"
      sha256 "324f4afca063c7dbbb9d71c6b03fff6418818521a15a79d04b57e80c6fab909e"
    end
  end

  def install
    bin.install "joule"
  end

  test do
    assert_match(/joule\s+\d+\.\d+\.\d+/, shell_output("#{bin}/joule version"))
  end
end
