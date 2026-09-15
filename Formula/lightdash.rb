class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.214.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.214.1/lightdash-cli-2.214.1-macos-arm64.tar.gz"
      sha256 "1c7ddea117c4bbe2fd6b32d47dc7a30c09cf1bdbdd731bb6f8ad48a5ef47112d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.214.1/lightdash-cli-2.214.1-macos-x64.tar.gz"
      sha256 "5e54af8a98aa7dc7530dd29e541a8e7414864c2ee9cd7383e8c270987dd18688"
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
