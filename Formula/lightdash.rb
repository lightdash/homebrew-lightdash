class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3025.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.3/lightdash-cli-0.3025.3-macos-arm64.tar.gz"
      sha256 "21f37468dceafc458530a668d8ac2a2ecd1151e4ea32bd78b5725bdc93f52d41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.3/lightdash-cli-0.3025.3-macos-x64.tar.gz"
      sha256 "d896fcaab53d4200697c46fac498dc44741db20cd93f56898e8115d74bbeb196"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
