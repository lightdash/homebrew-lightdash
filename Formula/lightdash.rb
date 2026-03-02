class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2545.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.2/lightdash-cli-0.2545.2-macos-arm64.tar.gz"
      sha256 "f35b753888880a73d3c98fc5f9edb83bc4b1ebfc6ae298a68376db0a585ee09e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.2/lightdash-cli-0.2545.2-macos-x64.tar.gz"
      sha256 "cd74f86fab82ee1bdaf97ae1b4d0900bdc8f026faaa95083205a9b403bbabc7e"
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
