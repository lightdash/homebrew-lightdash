class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.77.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.77.0/lightdash-cli-3.77.0-macos-arm64.tar.gz"
      sha256 "ef9e398db3ff9586451ee85d0a9d0323c227f33c48c4d069698f2936a28be03c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.77.0/lightdash-cli-3.77.0-macos-x64.tar.gz"
      sha256 "760e6aec81336fc2d58956a3667025d638cd107f2f8db7ee80409c68c57804ed"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.77.0/lightdash-cli-3.77.0-linux-x64.tar.gz"
    sha256 "cb27136883fb67d7185885c2d9202bd5f24426efdf769cf01dc250d4d9d58402"

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
