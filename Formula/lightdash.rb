class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2648.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.6/lightdash-cli-0.2648.6-macos-arm64.tar.gz"
      sha256 "c8f8a3a5966a0076e1808bd211f9d3d747c14f7700fbfbb1eea5f5651af52c46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.6/lightdash-cli-0.2648.6-macos-x64.tar.gz"
      sha256 "e9d1dba48c47e949ad814fa1167b38b80610895e980a9a5691407b2644658b53"
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
