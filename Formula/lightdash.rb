class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3020.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3020.0/lightdash-cli-0.3020.0-macos-arm64.tar.gz"
      sha256 "e6908430e5499179d5b9fb532b78abd25245cbd81e5aa268ad7539f8b2ad8eb1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3020.0/lightdash-cli-0.3020.0-macos-x64.tar.gz"
      sha256 "322708cb561f464aaf26be376dc40e0a78ad61630ddb8c6355bba706359aab02"
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
