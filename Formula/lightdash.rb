class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.407.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.407.0/lightdash-cli-2.407.0-macos-arm64.tar.gz"
      sha256 "7394ad6466f0385a9efa2b7ad2220ba7fc4b3958317e8dbe5c20f164105f32a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.407.0/lightdash-cli-2.407.0-macos-x64.tar.gz"
      sha256 "910bf62ccdf31e6c493f0126c2f7fd760ce99627f6d7976a5a9b8047f9d99914"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.407.0/lightdash-cli-2.407.0-linux-x64.tar.gz"
    sha256 "8c9689765b33e64417e7cd5f4d30219c736aa6d4068ac83afd4c0497951ab93a"

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
