class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.350.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.350.1/lightdash-cli-3.350.1-macos-arm64.tar.gz"
      sha256 "8eb6b46e1238ec35dc4e004494850f0cbbab1935bd0295c900966bcc4ec0b3c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.350.1/lightdash-cli-3.350.1-macos-x64.tar.gz"
      sha256 "7e092a2f426cd8ee00af19866dac17a50e1fc8411ba61df9926fd149f5d03426"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.350.1/lightdash-cli-3.350.1-linux-x64.tar.gz"
    sha256 "502e9cec6b6e2ab93451264c24c3857d13cb97bd0f48d926481860e2de4d7f6b"

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
