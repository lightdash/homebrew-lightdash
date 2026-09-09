class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.174.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.174.0/lightdash-cli-2.174.0-macos-arm64.tar.gz"
      sha256 "8c49d3b63f0e52d156cbfd17e873b63fb9b1a2b6adba2f81ec80287837146100"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.174.0/lightdash-cli-2.174.0-macos-x64.tar.gz"
      sha256 "ab6223118c3b3df5bd5934a5888176d89b9fb2f27f52148a8b232e06f98af9a5"
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
