class Joule < Formula
  desc "Donate idle compute, earn millijoules, use open-weight AI"
  homepage "https://joule.f00.sh/"
  version "0.1.10"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-aarch64.tar.gz"
      sha256 "8740bb5e51f327f0df90c1d64b2cf02c6413d7bc6bab9a63967f0b0e9838fcc7"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-x86_64.tar.gz"
      sha256 "55441f1f099399bfc19770d24eae008749225cd84c5f8658c772cfbd668850ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-aarch64.tar.gz"
      sha256 "26c98d00cca21cd583e6e4d6dc90f5d9cd5e4410f22f5ce992cc8c5cd33f0d7f"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-x86_64.tar.gz"
      sha256 "07d9b82abd1ddd3844d5ffeb239f1d2a205ca659d437c8e1c6237697bc712662"
    end
  end
  def install
    bin.install "joule"
  end
  test do
    assert_match(/joule\s+\d+\.\d+\.\d+/, shell_output("#{bin}/joule version"))
  end
end
