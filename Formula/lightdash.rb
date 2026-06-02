class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3077.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3077.1/lightdash-cli-0.3077.1-macos-arm64.tar.gz"
      sha256 "d17578cf5e228eac8cbdb6c58d00b3b9203080ffe26978b606159b76b53a8c13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3077.1/lightdash-cli-0.3077.1-macos-x64.tar.gz"
      sha256 "be11037af4760ed2687d35b00a0dd5aca551623a246c3465d968f00ddbb8dbc7"
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
