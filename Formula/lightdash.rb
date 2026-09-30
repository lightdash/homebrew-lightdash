class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.384.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.384.0/lightdash-cli-2.384.0-macos-arm64.tar.gz"
      sha256 "61d5aa057d9a4d4cb20520ec5aacb64fec7a6adba31fb04456503fa49d7c74cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.384.0/lightdash-cli-2.384.0-macos-x64.tar.gz"
      sha256 "4de3629a60f041e4500c9b52c3bc7d77642d45971e80529837b84fe6cfe86121"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.384.0/lightdash-cli-2.384.0-linux-x64.tar.gz"
    sha256 "d1e7a73384915f2421dd144caa2fd0d40676c307e678d880c81a6763825f0980"

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
