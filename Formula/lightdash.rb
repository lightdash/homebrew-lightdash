class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.427.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.427.0/lightdash-cli-3.427.0-macos-arm64.tar.gz"
      sha256 "f8c9d52d095d4b239e401a5ace677664aac459583be71a621063b8eaacee637c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.427.0/lightdash-cli-3.427.0-macos-x64.tar.gz"
      sha256 "121c438e8123f0a04b85c442d8712627788109109ca6ef0f74b33d405cdf91af"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.427.0/lightdash-cli-3.427.0-linux-x64.tar.gz"
    sha256 "3cd76846cc40689aa50d820d534edb1c93b79c94f2677a943b65b3f5fbeb487f"

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
