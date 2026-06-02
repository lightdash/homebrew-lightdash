class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3075.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3075.3/lightdash-cli-0.3075.3-macos-arm64.tar.gz"
      sha256 "3e88e846f620da09d8cc88a5cb1f74569edc1233be27a2a8fe43a54bde59e89f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3075.3/lightdash-cli-0.3075.3-macos-x64.tar.gz"
      sha256 "34075993d1c31bb39f9e345f38ca5b3fdc3a2f4a8123287ae830dab921675994"
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
