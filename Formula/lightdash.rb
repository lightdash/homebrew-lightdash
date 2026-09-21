class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.280.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.280.0/lightdash-cli-2.280.0-macos-arm64.tar.gz"
      sha256 "79412d8eec973261a0cb915e023560de4beba14102dac449fffdef593dfe3513"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.280.0/lightdash-cli-2.280.0-macos-x64.tar.gz"
      sha256 "428673d1b554a4a5cb3a14ad3ac7d83deed52666932a23739b12977a8d6dcf62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.280.0/lightdash-cli-2.280.0-linux-x64.tar.gz"
      sha256 "30e2a817b30aef067873c6f8d30de22d65bb573623ad55f9b4c272e623cc1c6e"
    end
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
