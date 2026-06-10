class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3132.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3132.0/lightdash-cli-0.3132.0-macos-arm64.tar.gz"
      sha256 "49fff3a032ffa8606bebea34084595622d05b7f249dea8e1ae744cc98ca522ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3132.0/lightdash-cli-0.3132.0-macos-x64.tar.gz"
      sha256 "ab2da23d33480d80f331fde002242028d7c1a82c317ffadeaead6e23f5c1e6df"
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
