class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.299.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.299.0/lightdash-cli-2.299.0-macos-arm64.tar.gz"
      sha256 "b40a0ec871641787cce2f60b7a3cb74e644f5a9fd0707162bfc93c5c846c5432"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.299.0/lightdash-cli-2.299.0-macos-x64.tar.gz"
      sha256 "3f8939710f066f94e94698b64a5d7b855d70c1fc10e493daa3a32f06cfd8e0c1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.299.0/lightdash-cli-2.299.0-linux-x64.tar.gz"
    sha256 "084618604599e469960c12dd556fdbbc5127ffeb8d4b4eb2ef0a91500e69130a"

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
