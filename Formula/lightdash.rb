class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3440.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3440.0/lightdash-cli-0.3440.0-macos-arm64.tar.gz"
      sha256 "56e762893824c7151235ccdaa31b550fb959dedad4e77def5a85eb49df752778"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3440.0/lightdash-cli-0.3440.0-macos-x64.tar.gz"
      sha256 "68c801822b137c094cba8aeb9e5d0551d6652b1cf41d20f7f94a6bb6af543663"
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
