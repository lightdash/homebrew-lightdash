class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2362.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2362.0/lightdash-cli-0.2362.0-macos-arm64.tar.gz"
      sha256 "6037fac08a70eca5926c0c1db1895ae56b18d50ddae540829c92c49dd7c90a6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2362.0/lightdash-cli-0.2362.0-macos-x64.tar.gz"
      sha256 "1e8366382540ac9373e7e1f1977ccdf3e0f1b43bd827614a3520221632ff3580"
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
