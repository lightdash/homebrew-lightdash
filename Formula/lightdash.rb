class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3374.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3374.1/lightdash-cli-0.3374.1-macos-arm64.tar.gz"
      sha256 "b5eaeb801c318d5b446865f4290f38d3c3c31e88e125539aeb621300ee0e5c89"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3374.1/lightdash-cli-0.3374.1-macos-x64.tar.gz"
      sha256 "3d04fa1da96db2474c8eed7dd311c6256c4efeea4a07e43553f74911c9dd9360"
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
