class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.622.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.622.0/lightdash-cli-2.622.0-macos-arm64.tar.gz"
      sha256 "cdef5d534f93adacc166dfd0d52978007350f995647d2b9d3a20724cf27f6b06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.622.0/lightdash-cli-2.622.0-macos-x64.tar.gz"
      sha256 "38526537313e6d1bd6de9db7a9c9cf3e4d45bc29e3ca12b130f526060c6d45b8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.622.0/lightdash-cli-2.622.0-linux-x64.tar.gz"
    sha256 "f3855501263a37ad74e7ffa2b60c07029d95b79cf019231f16651f5d9e304349"

    depends_on arch: :x86_64
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
