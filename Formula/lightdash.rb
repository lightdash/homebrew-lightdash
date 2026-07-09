class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3351.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3351.0/lightdash-cli-0.3351.0-macos-arm64.tar.gz"
      sha256 "1dd573dbe1fe6b80adef626e23aa50b94061b99eb6e99bd920a54940acfc0e71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3351.0/lightdash-cli-0.3351.0-macos-x64.tar.gz"
      sha256 "fba449bbba8f9234ccceefe882e2e4349c9721c94350467768b9bff79920a577"
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
